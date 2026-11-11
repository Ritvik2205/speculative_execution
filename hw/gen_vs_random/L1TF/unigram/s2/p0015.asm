.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
add bl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
bts bx, 18
mov rax, -6437636498926413678
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
sbb bl, bl
sbb bx, 24
adc dl, dl
jmp .bb_0.1
.bb_0.1:
or esi, ebx
add al, al
add dl, al
cmovp eax, ebx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 97
not si
adc edi, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
