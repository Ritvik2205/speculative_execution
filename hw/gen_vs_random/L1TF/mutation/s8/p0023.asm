.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ebx, bx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
test sil, 29
and rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
cmovs ebx, ecx
add dl, -53 # instrumentation
dec bx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
sbb dl, bl
bts ebx, esi
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
bt dx, cx
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
add cl, -36
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
