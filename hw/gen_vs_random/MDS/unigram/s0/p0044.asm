.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and bl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
test bl, dl
test dil, al
xor al, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and al, 14
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
xor rcx, rcx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and dl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
and dl, 125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
