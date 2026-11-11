.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, ax
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
btr ebx, 48
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
cmovnp di, bx
setz dl
lea edi, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -13
jmp .bb_0.1
.bb_0.1:
bswap edx
sbb bl, -88
add bl, -92 # instrumentation
setnz al
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 40
sub ebx, ebx
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
