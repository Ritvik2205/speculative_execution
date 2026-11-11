.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
xor cl, 83
cmovnbe si, si
cmovb di, cx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
add cl, 40 # instrumentation
cmovp rsi, rcx
jmp .bb_0.1
.bb_0.1:
cmp al, 25
and al, -99
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
setnl cl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
