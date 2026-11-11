.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp ecx, eax
cmovnb di, di
btc bx, dx
or al, sil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
xor bl, al
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
test bl, 106
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
cmovno eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
bt rax, 61
xor ebx, 2
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
or ecx, 72
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
