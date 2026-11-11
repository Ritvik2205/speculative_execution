.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 44
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
cmp edx, 44
movsx esi, cl
cmovz rax, rcx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], 72
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
xchg dil, cl
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
setnb al
sbb rcx, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
