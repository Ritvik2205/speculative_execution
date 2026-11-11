.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
setnle sil
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
add al, 110 # instrumentation
movsx si, al
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
add cl, -117 # instrumentation
cmovs rbx, rcx
test ecx, 39
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and cl, 66
lea si, qword ptr [rsi + rdi]
imul cl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
