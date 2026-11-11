.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 3
lea esi, qword ptr [rbx + rdi + 29710]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and dil, 58
sub esi, 17
lea rdi, qword ptr [rsi + rcx + 25300]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
sbb al, dl
cmovs di, dx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
adc esi, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
