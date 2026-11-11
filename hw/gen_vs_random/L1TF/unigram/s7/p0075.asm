.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
or al, cl
lea rdx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 18
setb cl
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
add dl, 37 # instrumentation
cmovbe bx, di
cmp esi, 110
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
sub dl, 105
test ebx, 37
add cl, 39 # instrumentation
setle cl
cmovb di, cx
btc rsi, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
