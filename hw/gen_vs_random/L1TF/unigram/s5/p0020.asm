.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 66
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
add cl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
sbb al, 61
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
mul rax
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
sub dil, bl
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
test eax, -2032743474
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
lea ebx, qword ptr [rdx + rdi + 64]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
test bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
