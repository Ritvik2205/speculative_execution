.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 86
xor edx, 9
cmovp edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
cmovnle rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 69
cmovs edi, esi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
test al, dl
cmovno esi, edx
btr bx, 27
cmovns eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and dl, -7
and al, -56
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
