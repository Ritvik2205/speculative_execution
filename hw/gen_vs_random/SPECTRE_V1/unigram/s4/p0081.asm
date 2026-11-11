.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rbx
adc ax, -614
sbb esi, 21
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 78
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
lea dx, qword ptr [rcx + rdi + 45005]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 52 # instrumentation
sets bl
add cl, 103 # instrumentation
cmovno esi, ecx
and cl, al
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
or rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
