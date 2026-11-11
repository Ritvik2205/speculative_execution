.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add dil, -7
and sil, 93
cwd
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
lea eax, qword ptr [rdx + rax + 51706]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
sbb bl, bl
and dl, dl
test bl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
btr esi, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
