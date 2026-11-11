.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
cmovno rdx, rdi
cmovle rbx, rsi
cmovs ebx, edx
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and bl, 26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and esi, 6
or dil, -78
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 29
btr cx, dx
test eax, ecx
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or dil, al
and dl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and rcx, -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
