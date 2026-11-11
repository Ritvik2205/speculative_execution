.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
sbb bl, dil
add dl, -11 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
add al, 118 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 24
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
not cx
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
test sil, 47
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
cmovnle rdx, rax
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
