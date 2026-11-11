.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 31
lea ax, qword ptr [rcx + rax + 16]
xor bl, dl
dec dx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rbx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmp bx, ax
test rcx, 100
lea ecx, qword ptr [rbx + rdx]
inc dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
