.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ecx
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or dl, bl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and ebx, -52
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
cmovno rdx, rcx
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
btc esi, esi
and ecx, edx
add cl, 39 # instrumentation
lea cx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
bts rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
