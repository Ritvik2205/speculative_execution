.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
xchg bx, ax
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
btr di, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
cmp dil, bl
dec dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
add rax, -1969014465
cmovnle rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
xor bl, dl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
