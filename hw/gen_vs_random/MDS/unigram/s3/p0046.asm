.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and bl, -56 # instrumentation
cmovnle esi, edi
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
test eax, 158941032
test cl, bl
bts rax, 77
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
xor ax, -16696
xor bl, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
bts ax, 22
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
bt si, ax
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
or sil, al
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
