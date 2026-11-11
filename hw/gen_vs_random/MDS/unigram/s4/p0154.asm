.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -115 # instrumentation
cmovl bx, ax
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 24
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and dl, -33 # instrumentation
cmovns rax, rax
or dl, al
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and bl, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
cmovp rdx, rsi
or dl, 22
cmovnbe cx, bx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 78
bt rax, rax
or sil, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
