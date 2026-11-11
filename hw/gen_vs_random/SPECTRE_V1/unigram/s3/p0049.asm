.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 110 # instrumentation
cmovb rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
add al, -76 # instrumentation
cmovnbe cx, cx
setnbe dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
cmovno dx, ax
cmovle si, di
or dx, 66
and rdx, -98
add al, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
lea eax, qword ptr [rax + rdi + 89]
add cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
