.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dl
setz cl
add cl, 88
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -5
bts rdx, rax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
cmp bl, 123
lea ax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 49
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
lea bx, qword ptr [rax + rdx + 24839]
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
lea dx, qword ptr [rdi + rdx + 73]
and rcx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
