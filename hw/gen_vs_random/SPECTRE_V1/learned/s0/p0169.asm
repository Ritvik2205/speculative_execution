.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and dl, al
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test eax, ebx
cmp dil, -58
bts si, 53
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
lea rbx, qword ptr [rcx + rdi]
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
