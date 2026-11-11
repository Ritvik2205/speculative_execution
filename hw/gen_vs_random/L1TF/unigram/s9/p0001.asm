.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, 99
lea edi, qword ptr [rdx + rdx + 45410]
cmp eax, eax
add bl, -79 # instrumentation
cmovo bx, dx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
cmp al, al
add dl, 108 # instrumentation
setl dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 49
add sil, dl
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
cmp bl, bl
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
add dl, -70
add bl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
add ebx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
