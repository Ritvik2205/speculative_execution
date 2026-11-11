.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
test cl, -86
xor bx, 90
xor dil, dl
and edi, 23
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
or al, sil
and si, -121
test eax, 1838539683
or sil, -49
xor cl, sil
and al, 75
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
