.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
cmp rcx, rdx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 46
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 42
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
lea di, qword ptr [rcx]
add dl, -96 # instrumentation
cmovo ebx, ebx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, 70
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
cmp dil, -58
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 94
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
