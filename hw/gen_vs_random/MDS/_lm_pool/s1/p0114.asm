.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 189
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and sil, sil
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 47
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
btr ecx, edx
test rcx, -613256812
xor rcx, 71
and al, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
