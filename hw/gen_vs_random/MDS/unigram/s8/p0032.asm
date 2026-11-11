.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and cl, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
btr ecx, ebx
cmovp ax, dx
cmovo bx, ax
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovns eax, ebx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 58
cmovs rax, rbx
cmovs rdi, rdx
and bl, al
test sil, sil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
cmovnz di, ax
or dil, -41
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
