.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
mul ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
lea eax, qword ptr [rcx + rcx + 52039]
add dl, 76 # instrumentation
sbb ax, 10551
add dl, -10 # instrumentation
cmovns eax, ebx
setle dl
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
imul dx, di, -95
not edi
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], -19
cmovo ecx, esi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
