.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
not sil
setb cl
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
xor edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
add dl, -108 # instrumentation
cmovnle esi, esi
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 68
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
sbb rsi, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
