.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle eax, eax
test cl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor al, 8
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
xor ax, -16696
or ax, 16560
and rax, -1931765367
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
xor dl, sil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
