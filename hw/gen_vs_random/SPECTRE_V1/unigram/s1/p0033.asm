.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 44
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 19
cmp dil, dil
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmovnz rdx, rbx
sub cl, al
and edi, 44
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
cmovnle ax, si
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rsi
lea ax, qword ptr [rdi + rsi + 6]
mov sil, dl
adc dl, dil
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
