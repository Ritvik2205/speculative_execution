.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
xor ax, 2053
xor rbx, -51
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnb esi, edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
btr ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or dl, -18
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
bt rcx, rbx
xor al, -119
and sil, sil
or rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
cmovz rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
test dl, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
