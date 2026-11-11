.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb bl
mov bl, dl
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
dec cl
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
lea cx, qword ptr [rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
imul al
sub bx, 34
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 73
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
