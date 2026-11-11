.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 57
and ax, 27170
test dl, -85
xor sil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
btr ax, dx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test cl, dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test dil, cl
test eax, 1838539683
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
