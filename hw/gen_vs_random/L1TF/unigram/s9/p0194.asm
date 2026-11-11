.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
cmovnbe rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
not cx
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add edi, 50
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
xor al, al
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
movsx ax, sil
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
nop
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
