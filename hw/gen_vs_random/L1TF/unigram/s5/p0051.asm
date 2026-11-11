.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
movsx eax, al
xor rax, rcx
cmovs ax, cx
bt cx, 83
xor dil, cl
or sil, sil
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
bts dx, 58
lea rdx, qword ptr [rax]
xor sil, sil
cmovl di, di
imul bx, cx, 90
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
