.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or dl, bl
and bl, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
xor cl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or al, -22
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or al, cl
test al, dil
test ebx, -2015966884
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
cmovnb rdi, rbx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
