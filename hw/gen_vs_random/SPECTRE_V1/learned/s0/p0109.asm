.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, cx
setnb cl
xor rsi, 73
add al, 45 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
lea si, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 32
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 83
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, 112 # instrumentation
setl dl
and bl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and al, -119
xor rsi, 73
xor rsi, 73
lea edi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
