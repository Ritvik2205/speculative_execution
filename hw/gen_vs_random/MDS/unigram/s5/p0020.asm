.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
and si, cx
btc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
test dil, bl
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
cmovl rax, rcx
and cl, 91 # instrumentation
cmovle rbx, rbx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or al, -22
test al, -7
xor eax, 984871847
and dl, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
