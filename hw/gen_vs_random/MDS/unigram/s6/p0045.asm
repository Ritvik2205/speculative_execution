.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and cl, 122 # instrumentation
cmovl ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
or al, 37
or bl, dl
bts si, bx
test si, 69
not cl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
xor dx, bx
and dl, -73
cmovnle esi, eax
xor bx, 43
and bl, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 5
btr rax, 56
not dil
cmovno rdi, rdi
and rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
