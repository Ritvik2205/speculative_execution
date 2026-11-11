.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
xor rax, rdi
btr ebx, edx
cmovnz edi, edx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
xor dx, 93
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
bts rax, 149
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
and dl, -3 # instrumentation
cmovnb dx, cx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test ecx, 1044879383
cmovns eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
btc si, 73
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and cx, ax
cmovo rdi, rbx
and dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
