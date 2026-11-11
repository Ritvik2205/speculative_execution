.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
bt dx, 228
xor sil, -14
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
cmovo rax, rdx
and rbx, 65
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
test bl, -9
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
xor si, si
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
not sil
and esi, 42
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
btr edx, 255
and bl, -56 # instrumentation
cmovnle esi, ebx
and bl, -82 # instrumentation
cmovz ecx, esi
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
