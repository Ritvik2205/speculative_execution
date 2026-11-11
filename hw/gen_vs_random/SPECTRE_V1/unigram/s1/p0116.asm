.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rax, rdi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
lea dx, qword ptr [rcx + rax + 83]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xor dil, -37
lea ax, qword ptr [rsi + rdx + 13]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 38 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
lea cx, qword ptr [rsi + rcx]
xchg rdx, rbx
cmp al, sil
sbb al, cl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
