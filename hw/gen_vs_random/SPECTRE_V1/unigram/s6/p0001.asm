.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 85
imul bx, si, 87
movsx rdx, di
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cmp sil, bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
lea rcx, qword ptr [rsi + rax + 92]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
