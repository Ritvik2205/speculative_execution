.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rbx]
cmovb si, di
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
cmovnz ebx, edi
cmovle ecx, ebx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
movzx edi, di
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
setb bl
not dl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 100
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
