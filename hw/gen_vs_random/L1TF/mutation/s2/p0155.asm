.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
setnb bl
bt rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
lea rbx, qword ptr [rcx + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
setno dl
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
lea ax, qword ptr [rax + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb rax, 1131444263
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, -88
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
sbb al, 92
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test sil, dl
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
setb cl
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
