.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add cl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
add dil, 88
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 81
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
add al, -57 # instrumentation
cmovo rsi, rdi
cmp cx, 51
test dl, al
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
cmovnz rcx, rdi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
