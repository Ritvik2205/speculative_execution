.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
add bl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
add bl, -77 # instrumentation
cmovns si, bx
test cx, 9
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
movzx rdi, sil
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
mov dl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
xor rdx, 122
cmovb bx, di
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
btc edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
