.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
mov dl, al
add al, -37 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
sbb sil, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 18
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
cmovnbe rax, rcx
lea rdx, qword ptr [rdx + rsi]
cmovb ecx, edx
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
