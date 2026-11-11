.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
add dl, -53 # instrumentation
dec bx
test sil, 29
cmovs ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
movzx ebx, bx
and rsi, rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
add cl, 88
sbb dl, bl
bts ebx, esi
bt dx, cx
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
