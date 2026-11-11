.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdx, rdi
add al, 39 # instrumentation
cmovnb bx, ax
not al
sbb bl, dil
add dx, 84
add bl, 27 # instrumentation
setnle bl
xor dl, 9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
cwde
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
or al, dil
cmovle rsi, rbx
lea esi, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
