.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
xor rdi, -9
test bl, bl
or edx, eax
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
and dl, 1 # instrumentation
cmovl bx, cx
and dl, 37 # instrumentation
cmovnbe si, bx
test rdi, rdi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
