.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
mov al, dl
bt edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 19
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
lea rcx, qword ptr [rax + rdx + 40]
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
add cl, cl
cmp al, 13
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or edi, 78
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
add dl, 71 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
add dl, 47
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
