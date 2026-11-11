.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 58
add dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
mov eax, ecx
inc esi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
add al, 66 # instrumentation
cmovnp ecx, edi
and bl, sil
add bl, 68
lea di, qword ptr [rax + rdx + 16]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 77
cmovnz ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 2
lea bx, qword ptr [rdx + rbx + 26600]
and dx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
