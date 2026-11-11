.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
dec bx
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rsi, rax
cmovs ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
movzx ebx, bx
test sil, 29
jmp .bb_0.1
.bb_0.1:
add cl, 42 # instrumentation
lea esi, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx + rbx + 50836]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
add bl, bl
cmovnp si, ax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
imul rdx, rdx
add cl, -103 # instrumentation
cmovnz cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
