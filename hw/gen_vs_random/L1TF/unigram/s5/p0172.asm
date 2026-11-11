.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
movzx bx, al
add dl, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
neg al
add dl, 22
setbe dil
xor sil, al
sub ebx, 17
inc bl
jmp .bb_0.1
.bb_0.1:
test di, 71
btc ecx, 12
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
