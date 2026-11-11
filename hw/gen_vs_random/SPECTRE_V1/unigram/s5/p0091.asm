.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb dil
and dil, dl
or rdi, 68
add cl, 36 # instrumentation
sub rax, rax
test rcx, -1420345926
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dil, 72
and esi, 77
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
