.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
bt rbx, rbx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 97
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 34
bt rcx, rdx
and sil, 65
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 44
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 89
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
cmovnbe bx, di
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 23
xor rax, 83
xor edx, 6
and al, -49 # instrumentation
cmovno ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
