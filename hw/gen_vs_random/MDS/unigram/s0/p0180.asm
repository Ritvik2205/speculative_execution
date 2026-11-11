.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
and dl, -73 # instrumentation
cmovns rsi, rdi
and bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
test edx, 84
btr edi, edx
or rbx, rdi
not esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and al, 33 # instrumentation
cmovnle ecx, eax
cmovl rdx, rax
xor dl, -125
xor al, 78
or cx, 10
and di, bx
and dl, -49 # instrumentation
cmovno dx, bx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 43
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
and bl, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
