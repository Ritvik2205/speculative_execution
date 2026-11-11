.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 94
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
test bx, ax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 38
test sil, -96
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and dl, 91 # instrumentation
cmovnle edx, edx
test rsi, 29
cmovle dx, bx
and dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and cl, 11 # instrumentation
cmovp eax, ebx
test al, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
cmovb si, dx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
or ecx, 84
cmovb rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
