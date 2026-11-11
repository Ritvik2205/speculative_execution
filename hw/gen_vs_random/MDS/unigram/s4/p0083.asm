.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 2
and si, -121
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
test dl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
bt si, 23
cmovnbe di, bx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 12
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and al, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
test dl, sil
xor rbx, 89
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
or cx, cx
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
